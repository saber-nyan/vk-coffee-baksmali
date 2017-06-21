.class public Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UsableRecyclerView.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/views/UsableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public bindingImages:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 424
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;->bindingImages:Z

    .line 425
    return-void
.end method


# virtual methods
.method public clearImage(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 433
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 429
    return-void
.end method
