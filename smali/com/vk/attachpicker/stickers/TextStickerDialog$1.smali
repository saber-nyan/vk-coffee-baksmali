.class Lcom/vk/attachpicker/stickers/TextStickerDialog$1;
.super Ljava/lang/Object;
.source "TextStickerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/stickers/TextStickerDialog;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/vk/attachpicker/stickers/StickerFont;Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/stickers/TextStickerDialog;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/stickers/TextStickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/stickers/TextStickerDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$1;->this$0:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPreDraw$143()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 68
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$1;->this$0:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-static {v0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->access$100(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$1;->this$0:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-static {v0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->access$000(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Lcom/vk/attachpicker/widget/BackPressEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/BackPressEditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 70
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$1;->this$0:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-static {v0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->access$000(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Lcom/vk/attachpicker/widget/BackPressEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/BackPressEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 63
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$1;->this$0:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-static {v0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->access$000(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Lcom/vk/attachpicker/widget/BackPressEditText;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/attachpicker/util/KeyboardUtils;->showKeyboard(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$1;->this$0:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-static {v0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->access$000(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Lcom/vk/attachpicker/widget/BackPressEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextStickerDialog$1;->this$0:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-static {v1}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->access$000(Lcom/vk/attachpicker/stickers/TextStickerDialog;)Lcom/vk/attachpicker/widget/BackPressEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/BackPressEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/BackPressEditText;->setSelection(I)V

    .line 67
    invoke-static {p0}, Lcom/vk/attachpicker/stickers/TextStickerDialog$1$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/stickers/TextStickerDialog$1;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 71
    const/4 v0, 0x1

    return v0
.end method
