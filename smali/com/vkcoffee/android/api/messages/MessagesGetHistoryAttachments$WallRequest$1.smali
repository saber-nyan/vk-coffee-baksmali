.class Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "MessagesGetHistoryAttachments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;

.field final synthetic val$f:Landroid/util/SparseArray;

.field final synthetic val$names:Landroid/util/SparseArray;

.field final synthetic val$photos:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;

    .prologue
    .line 206
    .local p0, "this":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;"
    iput-object p1, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;->this$0:Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;

    iput-object p2, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;->val$names:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;->val$photos:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;->val$f:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;"
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    iget-object v1, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;->val$names:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;->val$photos:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;->val$f:Landroid/util/SparseArray;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-object v0
.end method
