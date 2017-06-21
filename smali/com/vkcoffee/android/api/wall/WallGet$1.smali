.class Lcom/vkcoffee/android/api/wall/WallGet$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "WallGet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/wall/WallGet;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/wall/WallGet$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<",
        "Lcom/vkcoffee/android/NewsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/wall/WallGet;

.field final synthetic val$fs:Landroid/util/SparseArray;

.field final synthetic val$names:Landroid/util/SparseArray;

.field final synthetic val$photos:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/wall/WallGet;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/wall/WallGet;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkcoffee/android/api/wall/WallGet$1;->this$0:Lcom/vkcoffee/android/api/wall/WallGet;

    iput-object p2, p0, Lcom/vkcoffee/android/api/wall/WallGet$1;->val$names:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/vkcoffee/android/api/wall/WallGet$1;->val$photos:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/vkcoffee/android/api/wall/WallGet$1;->val$fs:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    iget-object v1, p0, Lcom/vkcoffee/android/api/wall/WallGet$1;->val$names:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/vkcoffee/android/api/wall/WallGet$1;->val$photos:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/vkcoffee/android/api/wall/WallGet$1;->val$fs:Landroid/util/SparseArray;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 114
    .local v0, "ne":Lcom/vkcoffee/android/NewsEntry;
    iget-object v1, p0, Lcom/vkcoffee/android/api/wall/WallGet$1;->this$0:Lcom/vkcoffee/android/api/wall/WallGet;

    invoke-static {v1}, Lcom/vkcoffee/android/api/wall/WallGet;->access$000(Lcom/vkcoffee/android/api/wall/WallGet;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/vkcoffee/android/api/wall/WallGet$1;->this$0:Lcom/vkcoffee/android/api/wall/WallGet;

    invoke-static {v1}, Lcom/vkcoffee/android/api/wall/WallGet;->access$000(Lcom/vkcoffee/android/api/wall/WallGet;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 117
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
    .line 110
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/wall/WallGet$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    return-object v0
.end method
