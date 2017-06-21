.class Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$2;
.super Ljava/util/ArrayList;
.source "FeedbackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;
    .param p2, "x0"    # I

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$2;->this$0:Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$2;->this$0:Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;

    const v1, 0x7f080432

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$2;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$2;->this$0:Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$2;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method
