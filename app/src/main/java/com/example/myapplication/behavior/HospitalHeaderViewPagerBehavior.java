package com.example.myapplication.behavior;

import android.content.Context;
import android.graphics.Rect;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.TabLayout;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;

import com.example.myapplication.R;

import java.util.List;

/**
 * @author hongjiang
 * @date 2019/4/23
 **/
public class HospitalHeaderViewPagerBehavior extends CoordinatorLayout.Behavior<View> {

    private boolean init = false ;
    private static final String TAG = "HospitalHeaderViewPagerBehavior";

    private final Rect mHeadRect = new Rect();

    public HospitalHeaderViewPagerBehavior() {
    }

    public HospitalHeaderViewPagerBehavior(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    public boolean layoutDependsOn(CoordinatorLayout parent, View child, View dependency) {
        return isDependOn(dependency);
    }

    @Override
    public boolean onLayoutChild(CoordinatorLayout parent, View child, int layoutDirection) {
        final List<View> dependencies = parent.getDependencies(child);
        final View dependency = findDependency(dependencies);
        if (dependency != null) {
            mHeadRect.set(dependency.getLeft(), dependency.getBottom(), dependency.getRight(), dependency.getBottom() + child.getMeasuredHeight());
            child.layout(mHeadRect.left, mHeadRect.top, mHeadRect.right, mHeadRect.bottom);
        }
        return true;
    }
    private TabLayout tabLayout;
    private LinearLayout linearLayoutTop;
    @Override
    public boolean onDependentViewChanged(CoordinatorLayout parent, View child, View dependency) {
        child.setTranslationY(dependency.getTranslationY());
        Log.e(TAG, "child  " + child);
//        if(!init){
//            init = true ;
//            tabLayout = parent.findViewById(R.id.tab);
//            linearLayoutTop = parent.findViewById(R.id.header);
//            linearLayoutTop.setTranslationY(-480);
//        }

        return true;
    }

    private View findDependency(List<View> views) {
        for (int i = 0, z = views.size(); i < z; i++) {
            View view = views.get(i);
            if (isDependOn(view)){
                return view;
            }
        }
        return null;
    }

    private boolean isDependOn(View dependency) {
        return dependency != null && dependency.getId() == R.id.tab;
    }

}