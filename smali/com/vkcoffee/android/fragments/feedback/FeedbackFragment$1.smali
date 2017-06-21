.class Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$1;
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
        "Landroid/app/Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;
    .param p2, "x0"    # I

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    new-instance v0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$1;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$1;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method
