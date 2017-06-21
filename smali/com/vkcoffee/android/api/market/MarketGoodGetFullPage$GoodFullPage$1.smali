.class Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "MarketGoodGetFullPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;-><init>(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<",
        "Lcom/vkcoffee/android/api/board/BoardComment;",
        ">;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;

.field final synthetic val$names:Landroid/util/SparseArray;

.field final synthetic val$names_dat:Landroid/util/SparseArray;

.field final synthetic val$photos:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->this$0:Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;

    iput-object p2, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->val$names:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->val$photos:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->val$names_dat:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->this$0:Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;

    iget v0, v0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->offset:I

    iput v0, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->i:I

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/board/BoardComment;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v2, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->val$names:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->val$photos:Landroid/util/SparseArray;

    iget v4, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->i:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->i:I

    iget-object v1, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->this$0:Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;

    iget v5, v1, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->owner_id:I

    iget-object v6, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->val$names_dat:Landroid/util/SparseArray;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/api/board/BoardComment;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;IILandroid/util/SparseArray;)V

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
    .line 93
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/board/BoardComment;

    move-result-object v0

    return-object v0
.end method
