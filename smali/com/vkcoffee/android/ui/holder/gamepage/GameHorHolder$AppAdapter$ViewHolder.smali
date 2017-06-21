.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "GameHorHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public badge:Landroid/widget/TextView;

.field public imageView:Landroid/widget/ImageView;

.field public itemWidth:I

.field public lastData:Lcom/vkcoffee/android/data/ApiApplication;

.field public textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;

    .line 145
    invoke-direct {p0, p2}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f100116

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f100114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f100115

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->badge:Landroid/widget/TextView;

    .line 150
    iget v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->itemWidth:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->setItemWidth(I)V

    .line 151
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->access$200(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "catalog"

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->access$300(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->access$300(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->lastData:Lcom/vkcoffee/android/data/ApiApplication;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 171
    return-void
.end method

.method public setItemWidth(I)V
    .locals 1
    .param p1, "itemWidth"    # I

    .prologue
    .line 155
    iget v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->itemWidth:I

    if-ne v0, p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iput p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->itemWidth:I

    .line 159
    if-lez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 162
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    goto :goto_0
.end method
