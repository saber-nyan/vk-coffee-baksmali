.class Lcom/vkcoffee/android/api/video/VideoSearch$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "VideoSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/video/VideoSearch;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/video/VideoSearch;

.field final synthetic val$names:Landroid/util/SparseArray;

.field final synthetic val$photos:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/video/VideoSearch;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/video/VideoSearch;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vkcoffee/android/api/video/VideoSearch$1;->this$0:Lcom/vkcoffee/android/api/video/VideoSearch;

    iput-object p2, p0, Lcom/vkcoffee/android/api/video/VideoSearch$1;->val$names:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/vkcoffee/android/api/video/VideoSearch$1;->val$photos:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VideoFile;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/vkcoffee/android/api/VideoFile;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V

    .line 58
    .local v0, "v":Lcom/vkcoffee/android/api/VideoFile;
    iget-object v1, p0, Lcom/vkcoffee/android/api/video/VideoSearch$1;->val$names:Landroid/util/SparseArray;

    iget v2, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/vkcoffee/android/api/video/VideoSearch$1;->val$photos:Landroid/util/SparseArray;

    iget v2, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    .line 60
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/video/VideoSearch$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    return-object v0
.end method
