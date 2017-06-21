.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "BoardTopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->toggleFixTopic(Lcom/vkcoffee/android/api/BoardTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

.field final synthetic val$isFixed:Z

.field final synthetic val$topic:Lcom/vkcoffee/android/api/BoardTopic;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Landroid/app/Fragment;ZLcom/vkcoffee/android/api/BoardTopic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    iput-boolean p3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$isFixed:Z

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$isFixed:Z

    if-eqz v4, :cond_1

    const v4, 0x7f080552

    :goto_0
    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 212
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$isFixed:Z

    if-eqz v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v5, v4, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v4, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    .line 218
    :goto_1
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$isFixed:Z

    if-eqz v4, :cond_a

    .line 219
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$400(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "added":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$500(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_8

    .line 222
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$600(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/api/BoardTopic;

    .local v2, "t1":Lcom/vkcoffee/android/api/BoardTopic;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$700(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/api/BoardTopic;

    .line 223
    .local v3, "t2":Lcom/vkcoffee/android/api/BoardTopic;
    iget v4, v2, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_3

    .line 221
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 211
    .end local v0    # "added":Z
    .end local v1    # "i":I
    .end local v2    # "t1":Lcom/vkcoffee/android/api/BoardTopic;
    .end local v3    # "t2":Lcom/vkcoffee/android/api/BoardTopic;
    :cond_1
    const v4, 0x7f08054c

    goto :goto_0

    .line 215
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v5, v4, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    goto :goto_1

    .line 226
    .restart local v0    # "added":Z
    .restart local v1    # "i":I
    .restart local v2    # "t1":Lcom/vkcoffee/android/api/BoardTopic;
    .restart local v3    # "t2":Lcom/vkcoffee/android/api/BoardTopic;
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$100(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v4, v4, Lcom/vkcoffee/android/api/BoardTopic;->updated:I

    iget v5, v2, Lcom/vkcoffee/android/api/BoardTopic;->updated:I

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v4, v4, Lcom/vkcoffee/android/api/BoardTopic;->updated:I

    iget v5, v3, Lcom/vkcoffee/android/api/BoardTopic;->updated:I

    if-ge v4, v5, :cond_7

    :cond_4
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .line 227
    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$100(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v4, v4, Lcom/vkcoffee/android/api/BoardTopic;->updated:I

    iget v5, v3, Lcom/vkcoffee/android/api/BoardTopic;->updated:I

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v4, v4, Lcom/vkcoffee/android/api/BoardTopic;->updated:I

    iget v5, v2, Lcom/vkcoffee/android/api/BoardTopic;->updated:I

    if-ge v4, v5, :cond_7

    :cond_5
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .line 228
    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$100(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v4, v4, Lcom/vkcoffee/android/api/BoardTopic;->created:I

    iget v5, v2, Lcom/vkcoffee/android/api/BoardTopic;->created:I

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v4, v4, Lcom/vkcoffee/android/api/BoardTopic;->created:I

    iget v5, v3, Lcom/vkcoffee/android/api/BoardTopic;->created:I

    if-ge v4, v5, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .line 229
    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$100(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v4, v4, Lcom/vkcoffee/android/api/BoardTopic;->created:I

    iget v5, v3, Lcom/vkcoffee/android/api/BoardTopic;->created:I

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v4, v4, Lcom/vkcoffee/android/api/BoardTopic;->created:I

    iget v5, v2, Lcom/vkcoffee/android/api/BoardTopic;->created:I

    if-lt v4, v5, :cond_0

    .line 230
    :cond_7
    const/4 v0, 0x1

    .line 231
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$800(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 234
    .end local v2    # "t1":Lcom/vkcoffee/android/api/BoardTopic;
    .end local v3    # "t2":Lcom/vkcoffee/android/api/BoardTopic;
    :cond_8
    if-nez v0, :cond_9

    .line 235
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$900(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v0    # "added":Z
    .end local v1    # "i":I
    :cond_9
    :goto_4
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->updateList()V

    .line 242
    return-void

    .line 238
    :cond_a
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$1000(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$1100(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;->val$topic:Lcom/vkcoffee/android/api/BoardTopic;

    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4
.end method
