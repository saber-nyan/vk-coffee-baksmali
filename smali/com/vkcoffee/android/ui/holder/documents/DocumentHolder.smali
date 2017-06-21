.class public Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "DocumentHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;
.implements Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vkcoffee/android/api/BaseDocument;",
        ">",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<TT;>;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;",
        "Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;",
        "Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected final info:Landroid/widget/TextView;

.field protected lastDoc:Lcom/vkcoffee/android/api/BaseDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

.field protected final title:Landroid/widget/TextView;

.field protected final type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<TT;>;"
    const v0, 0x7f03007e

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 33
    const v0, 0x7f1001e4

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->title:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f1001e3

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->type:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f1001e5

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->info:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f1001e6

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/RoundedImageView2;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/RoundedImageView2;->setFactory(Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;)V

    .line 38
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/BaseDocument;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<TT;>;"
    .local p1, "doc":Lcom/vkcoffee/android/api/BaseDocument;, "TT;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->lastDoc:Lcom/vkcoffee/android/api/BaseDocument;

    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/vkcoffee/android/api/BaseDocument;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->type:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/vkcoffee/android/api/BaseDocument;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/vkcoffee/android/api/BaseDocument;->getExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->lastDoc:Lcom/vkcoffee/android/api/BaseDocument;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->setInfo(Landroid/widget/TextView;Lcom/vkcoffee/android/api/BaseDocument;)V

    .line 51
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<TT;>;"
    check-cast p1, Lcom/vkcoffee/android/api/BaseDocument;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->bind(Lcom/vkcoffee/android/api/BaseDocument;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 64
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/RoundedImageView2;->clearImage()V

    .line 65
    return-void
.end method

.method public create(Landroid/graphics/Bitmap;Lcom/vkcoffee/android/ui/RoundedImageView2;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageView"    # Lcom/vkcoffee/android/ui/RoundedImageView2;

    .prologue
    .line 42
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<TT;>;"
    new-instance v0, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public onClick()V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<TT;>;"
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->onClick()V

    .line 79
    return-void
.end method

.method public onLongClick()Z
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/RoundedImageView2;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    return-void
.end method

.method protected setInfo(Landroid/widget/TextView;Lcom/vkcoffee/android/api/BaseDocument;)V
    .locals 4
    .param p1, "info"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<TT;>;"
    .local p2, "doc":Lcom/vkcoffee/android/api/BaseDocument;, "TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/vkcoffee/android/api/BaseDocument;->getSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/vkcoffee/android/api/BaseDocument;->getDate()I

    move-result v1

    invoke-static {v1}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
