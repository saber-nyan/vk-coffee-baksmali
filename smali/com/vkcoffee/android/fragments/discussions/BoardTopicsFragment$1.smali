.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "BoardTopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;)V
    .locals 2
    .param p1, "res"    # Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;->topics:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->onDataLoaded(Lme/grishka/appkit/api/PaginatedList;)V

    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    iget-boolean v1, p1, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;->canCreate:Z

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$002(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Z)Z

    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->invalidateOptionsMenu()V

    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    iget v1, p1, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;->order:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$102(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;I)I

    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->access$202(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Lme/grishka/appkit/api/APIRequest;)Lme/grishka/appkit/api/APIRequest;

    .line 116
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$1;->success(Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;)V

    return-void
.end method
