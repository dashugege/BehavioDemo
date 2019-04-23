package com.example.myapplication.behavior;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.example.myapplication.R;

/**
 * @author hongjiang
 * @date 2019/4/23
 **/
public class HospitalTopViewScrollBehavior extends CoordinatorLayout.Behavior<View> {

    public static int POSITION = 0 ;
    private static final String TAG = "HospitalTopViewScrollBehavior";
    private TabLayout tabLayout;
    private LinearLayout linearLayoutTop;


    public HospitalTopViewScrollBehavior() {
    }

    public HospitalTopViewScrollBehavior(Context context, AttributeSet attrs) {
        super(context, attrs);

    }


    @Override
    public boolean onLayoutChild(CoordinatorLayout parent, View child, int layoutDirection) {
        boolean handled = super.onLayoutChild(parent, child, layoutDirection);
        tabLayout = parent.findViewById(R.id.tab);
        linearLayoutTop = parent.findViewById(R.id.header);
        return handled;
    }





    @Override
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout,
                                       @NonNull View child, @NonNull View directTargetChild, @NonNull View target,
                                       @ViewCompat.ScrollAxis int axes, @ViewCompat.NestedScrollType int type) {
       return (axes & ViewCompat.SCROLL_AXIS_VERTICAL) != 0;
    }




    @Override
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout,
                                  @NonNull View child, @NonNull View target, int dx, int dy, @NonNull int[] consumed,
                                  @ViewCompat.NestedScrollType int type) {

        if (target instanceof RecyclerView) {
            RecyclerView rv = (RecyclerView) target;
            boolean down = rv.canScrollVertically(1);
            boolean up = rv.canScrollVertically(-1);
            int maxTranslationY = POSITION == 0 ?getMaxTranslationY(child) + 120 : getMaxTranslationY(child);
            int scrollY = rv.computeVerticalScrollOffset();
            if(dy > 0 ){
                Log.e(TAG, "上啦");
                if (Math.abs(child.getTranslationY() - dy) < maxTranslationY) {
                    child.setTranslationY((child.getTranslationY() - dy));
                    Log.e(TAG, "上啦+++++++++++++");
                } else {
                    Log.e(TAG, "上啦----------------");
                    child.setTranslationY(-maxTranslationY);
                }
            }
            if(dy < 0 ){
                int currentPosition = ((RecyclerView.LayoutParams) rv.getChildAt(0).getLayoutParams()).getViewAdapterPosition();
                Log.e(TAG, "下啦"+ currentPosition);
                if(currentPosition >=3 ){
                    //向下拉  头部慢慢距离 慢慢放大
                    Log.e(TAG, "===" + (child.getTranslationY() - dy));
                    child.setTranslationY((child.getTranslationY() - dy) >= 0 ? 0 : (child.getTranslationY() - dy));
                }else {
                    if(scrollY < maxTranslationY && POSITION == 0 ){
                        //向下拉  慢慢收回头部
                        float translationY = child.getTranslationY();
                        Log.e(TAG, "===translationY  " + translationY + " dy " + dy + " tempDy ");
                        child.setTranslationY(maxTranslationY-scrollY >=maxTranslationY ?  -maxTranslationY :  -(maxTranslationY - scrollY));
                        if(maxTranslationY-scrollY < maxTranslationY){
                           float alpha =  Math.abs(maxTranslationY - scrollY) / 255.0f ;
                           tabLayout.setAlpha(alpha);
                        }

                    }
                }
            }
        }
    }

    private int getMaxTranslationY(View view) {
        return view.getMeasuredHeight();
    }
}