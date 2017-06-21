.class Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$2;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "DocumentsByTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->doDelete(Lcom/vkcoffee/android/api/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

.field final synthetic val$doc:Lcom/vkcoffee/android/api/Document;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/Document;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$2;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$2;->val$doc:Lcom/vkcoffee/android/api/Document;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$2;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->access$000(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$2;->val$doc:Lcom/vkcoffee/android/api/Document;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 146
    .local v0, "index":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$2;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->access$100(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$2;->val$doc:Lcom/vkcoffee/android/api/Document;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$2;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->updateListRemoveItem(I)V

    .line 148
    return-void
.end method
