.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "GameInfoHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public imageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

.field final synthetic this$1:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;->this$1:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;

    .line 179
    invoke-direct {p0, p2}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 180
    const v0, 0x7f1000d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/RatioImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;->imageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    .line 181
    return-void
.end method


# virtual methods
.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;->imageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    const v1, 0x7f0202da

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageResource(I)V

    .line 191
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;->imageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    return-void
.end method
