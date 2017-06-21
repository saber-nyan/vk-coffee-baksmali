.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$8;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$8;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput p2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$8;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$8;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iget v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$8;->val$index:I

    add-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->smoothScrollTo(II)V

    .line 551
    return-void
.end method
