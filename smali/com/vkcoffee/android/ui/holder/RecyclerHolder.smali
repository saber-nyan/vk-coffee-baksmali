.class public abstract Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "RecyclerHolder.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
        "Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    const/4 v1, 0x0

    .line 41
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    .line 42
    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->mParent:Landroid/view/ViewGroup;

    .line 43
    return-void
.end method

.method public constructor <init>(ILandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    .line 47
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->mParent:Landroid/view/ViewGroup;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 35
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    invoke-direct {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->mContext:Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->mParent:Landroid/view/ViewGroup;

    .line 38
    return-void
.end method


# virtual methods
.method public $(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract bind(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public clearImage(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 108
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 104
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    return-void
.end method

.method public setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "holderRes"    # I

    .prologue
    .line 96
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<TT;>;"
    if-eqz p1, :cond_0

    .line 97
    if-nez p3, :cond_1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-static {p1, v0, p2}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
