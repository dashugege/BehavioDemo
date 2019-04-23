package com.example.myapplication.dummy;

import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;


import java.util.List;

/**
 * @author hongjiang
 * @date 2019/2/18
 **/
public class HospitalFragmentAdapter extends FragmentStatePagerAdapter {

    private List<Fragment> list;
    private List<String> listTitle;

    public HospitalFragmentAdapter(FragmentManager fragmentManager, List<Fragment> list, List<String> listTitle) {
        super(fragmentManager);
        this.list = list;
        this.listTitle = listTitle;
    }


    @Nullable
    @Override
    public CharSequence getPageTitle(int position) {
        return listTitle.get(position);

    }

    @Override
    public Fragment getItem(int position) {
        return list.get(position);
    }

    @Override
    public int getCount() {
        return list.size();
    }
}
