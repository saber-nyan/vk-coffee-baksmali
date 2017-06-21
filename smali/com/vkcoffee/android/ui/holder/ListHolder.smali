.class public abstract Lcom/vkcoffee/android/ui/holder/ListHolder;
.super Ljava/lang/Object;
.source "ListHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final itemView:Landroid/view/View;

.field private final mAdapter:Landroid/widget/BaseAdapter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field protected final mImgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
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
    .line 48
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/holder/ListHolder;-><init>(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public constructor <init>(ILandroid/view/ViewGroup;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Landroid/widget/BaseAdapter;)V
    .locals 2
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "imgLoader"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "adapter"    # Landroid/widget/BaseAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/vkcoffee/android/ui/holder/ListHolder;-><init>(Landroid/view/View;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Landroid/widget/BaseAdapter;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0, v0}, Lcom/vkcoffee/android/ui/holder/ListHolder;-><init>(Landroid/view/View;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Landroid/widget/BaseAdapter;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "imgLoader"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "adapter"    # Landroid/widget/BaseAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/ListHolder;->itemView:Landroid/view/View;

    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/ListHolder;->mImgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .line 43
    iput-object p3, p0, Lcom/vkcoffee/android/ui/holder/ListHolder;->mAdapter:Landroid/widget/BaseAdapter;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/ListHolder;->mContext:Landroid/content/Context;

    .line 45
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
    .line 61
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/ListHolder;->itemView:Landroid/view/View;

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

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/ListHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/ListHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getImgLoader()Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/ListHolder;->mImgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/ListHolder;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/ListHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/ListHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/ListHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/ListHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/ListHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/ListHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "placeholder"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 105
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/ListHolder;, "Lcom/vkcoffee/android/ui/holder/ListHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/ListHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 106
    return-void
.end method
