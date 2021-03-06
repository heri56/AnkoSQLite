package com.example.heriprastio.footballclubapplication.adapter

import android.content.Context
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import com.example.heriprastio.footballclubapplication.R
import com.example.heriprastio.footballclubapplication.model.ItemData
import com.squareup.picasso.Picasso

class FootBallRecyclerViewAdapter(private val context: Context, private val itemsdata: List<ItemData>, private val listener: (ItemData) -> Unit) : RecyclerView.Adapter<FootBallRecyclerViewAdapter.ViewHolder>(){
    override fun onCreateViewHolder(p0: ViewGroup, p1: Int) =
        ViewHolder(LayoutInflater.from(context).inflate(R.layout.item_list,p0, false))

    override fun onBindViewHolder(p0: FootBallRecyclerViewAdapter.ViewHolder, p1: Int) {
        p0.bindingitem(itemsdata[p1], listener)

    }

    override fun getItemCount(): Int {
        return itemsdata.size
    }
    class ViewHolder(view: View): RecyclerView.ViewHolder(view){
        private val nama = view.findViewById<TextView>(R.id.name)
        private val image_gambar = view.findViewById<ImageView>(R.id.image)
        fun bindingitem(itemdata: ItemData, listener: (ItemData)->Unit){
            Picasso.get().load().into(image_gambar)
            nama.text = itemdata.nama
            itemdata.image_gambar?.let { Picasso.get().load(it).into(image_gambar) }

            itemView.setOnClickListener{
                listener(itemdata)
            }

        }

    }
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       