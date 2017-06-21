.class public Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "LinkHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/Link;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private lastLink:Lcom/vkcoffee/android/Link;

.field private final link:Landroid/widget/TextView;

.field private final thumb:Landroid/widget/TextView;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    const v0, 0x7f0300ba

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 27
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->imageView:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->title:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f10026d

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->link:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f10026c

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->thumb:Landroid/widget/TextView;

    .line 31
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/Link;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/Link;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->lastLink:Lcom/vkcoffee/android/Link;

    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/Link;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/Link;->getDisplayText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->link:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/Link;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->thumb:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/Link;->thumb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/vkcoffee/android/Link;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->bind(Lcom/vkcoffee/android/Link;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    return-void
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->lastLink:Lcom/vkcoffee/android/Link;

    iget-object v2, v2, Lcom/vkcoffee/android/Link;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    new-instance v0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;

    invoke-direct {v0, p2}, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .local v0, "drawable":Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/LinkHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void
.end method
