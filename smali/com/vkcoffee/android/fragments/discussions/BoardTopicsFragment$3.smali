.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "BoardTopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->toggleCloseTopic(Lcom/vkcoffee/android/api/BoardTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

.field final synthetic val$isClosed:Z

.field final synthetic val$topic:Lcom/vkcoffee/android/api/BoardTopic;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Landroid/app/Fragment;ZLcom/vkcoffee/android/api/BoardTopic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    iput-boolean p3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;->val$isClosed:Z

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;->val$isClosed:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080551

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;->val$isClosed:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v1, v0, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    .line 201
    :goto_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->updateList()V

    .line 202
    return-void

    .line 195
    :cond_0
    const v0, 0x7f08054b

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v1, v0, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    goto :goto_1
.end method
