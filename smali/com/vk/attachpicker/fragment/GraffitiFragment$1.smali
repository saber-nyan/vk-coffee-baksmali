.class Lcom/vk/attachpicker/fragment/GraffitiFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GraffitiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/fragment/GraffitiFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/api/Document;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/fragment/GraffitiFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/fragment/GraffitiFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 140
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 141
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/fragment/GraffitiFragment$1;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Document;>;"
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 133
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->access$000(Lcom/vk/attachpicker/fragment/GraffitiFragment;Ljava/util/List;Z)V

    .line 134
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    invoke-virtual {v0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->getAdapter()Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->setData(Ljava/util/ArrayList;)V

    .line 135
    return-void
.end method
