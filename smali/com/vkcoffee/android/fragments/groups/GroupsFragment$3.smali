.class Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;
.super Ljava/lang/Thread;
.source "GroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

.field private final synthetic val$when:J


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    iput-wide p2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->val$when:J

    .line 265
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 267
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$6(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 268
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$7(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$6(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Groups;->getAdminedGroups(Ljava/util/ArrayList;)V

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$8(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 274
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$9(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 275
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$6(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$9(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$GroupsFragment$3$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/lang/Runnable;

    move-result-object v2

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->val$when:J

    invoke-static {v2, v4, v5}, Lcom/vkcoffee/android/functions/Functions;->postDelayed(Ljava/lang/Runnable;J)V

    .line 285
    return-void

    .line 271
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$6(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Groups;->getGroups(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 276
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$6(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    .line 277
    .local v0, "g":Lcom/vkcoffee/android/api/Group;
    iget v2, v0, Lcom/vkcoffee/android/api/Group;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 278
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$9(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$8(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
