package com.example.myapplication;

import android.content.Context;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/**
 * @author hongjiang
 * @date 2019/4/23
 **/
public class HospitalBehavior extends CoordinatorLayout.Behavior<View> {

    public HospitalBehavior() {
    }

    public HospitalBehavior(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

//    确定使用Behavior的View要依赖的View的类型
    @Override
    public boolean layoutDependsOn(CoordinatorLayout parent, View child, View dependency) {
//        return super.layoutDependsOn(parent, child, dependency);
        System.out.println("layoutDependsOn child= " + child);
        System.out.println("layoutDependsOn dependency= " + dependency);
        return dependency instanceof ViewPager;
    }


//    当被依赖的View状态改变时回调
    @Override
    public boolean onDependentViewChanged(CoordinatorLayout parent, View child, View dependency) {
        System.out.println("onDependentViewChanged child= " + child );
        System.out.println("onDependentViewChanged dependency = " + dependency);
//        return super.onDependentViewChanged(parent, child, dependency);
        child.setY(dependency.getY());


        return  true;
    }

//    当被依赖的View移除时回调
    @Override
    public void onDependentViewRemoved(CoordinatorLayout parent, View child, View dependency) {
        super.onDependentViewRemoved(parent, child, dependency);
    }

    //    是否拦截触摸事件
    @Override
    public boolean onInterceptTouchEvent(CoordinatorLayout parent, View child, MotionEvent ev) {
        return super.onInterceptTouchEvent(parent, child, ev);
    }

    //处理触摸事件
    @Override
    public boolean onTouchEvent(CoordinatorLayout parent, View child, MotionEvent ev) {
        return super.onTouchEvent(parent, child, ev);
    }
}
