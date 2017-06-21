.class Lcom/vkcoffee/android/api/video/VideoGet$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "VideoGet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/video/VideoGet;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
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
.field final synthetic this$0:Lcom/vkcoffee/android/api/video/VideoGet;

.field final synthetic val$profiles:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/video/VideoGet;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/video/VideoGet;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vkcoffee/android/api/video/VideoGet$1;->this$0:Lcom/vkcoffee/android/api/video/VideoGet;

    iput-object p2, p0, Lcom/vkcoffee/android/api/video/VideoGet$1;->val$profiles:Landroid/util/SparseArray;

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
    .line 77
    new-instance v0, Lcom/vkcoffee/android/api/VideoFile;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V

    .line 78
    .local v0, "v":Lcom/vkcoffee/android/api/VideoFile;
    iget-object v1, p0, Lcom/vkcoffee/android/api/video/VideoGet$1;->val$profiles:Landroid/util/SparseArray;

    iget v2, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/vkcoffee/android/api/video/VideoGet$1;->val$profiles:Landroid/util/SparseArray;

    iget v2, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iget-object v1, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/vkcoffee/android/api/video/VideoGet$1;->val$profiles:Landroid/util/SparseArray;

    iget v2, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iget-object v1, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    .line 82
    :cond_0
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
    .line 74
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/video/VideoGet$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    return-object v0
.end method
