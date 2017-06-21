.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$6;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

.field final synthetic val$la:Lcom/vkcoffee/android/attachments/PollAttachment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PollAttachment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$6;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$6;->val$la:Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$6;->val$la:Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->edit(Lcom/vkcoffee/android/attachments/PollAttachment;)Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$6;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;->forResult(Landroid/app/Activity;I)V

    .line 433
    return-void
.end method
