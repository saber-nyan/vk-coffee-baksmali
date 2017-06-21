.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$12$1;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12$1;->this$1:Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12$1;->this$1:Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;->val$v:Landroid/view/View;

    const v1, 0x7f100148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 796
    return-void
.end method
