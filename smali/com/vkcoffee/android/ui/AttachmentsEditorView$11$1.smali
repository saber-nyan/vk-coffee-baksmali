.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$11$1;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;

    .prologue
    .line 763
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11$1;->this$1:Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 765
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set thumb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11$1;->this$1:Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;->val$v:Landroid/view/View;

    const v1, 0x7f100148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 767
    return-void
.end method
