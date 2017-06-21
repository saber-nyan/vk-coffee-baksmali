.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$3;
.super Landroid/widget/LinearLayout;
.source "AttachmentsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "count"    # I
    .param p2, "i"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$600(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 256
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 251
    .restart local p2    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$700(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 253
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$3;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$700(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)I

    move-result p2

    goto :goto_0

    .line 256
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$3;->setChildrenDrawingOrderEnabled(Z)V

    .line 244
    return-void
.end method
