.class Lcom/facebook/share/ShareApi$5;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/internal/CollectionMapper$Collection",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$arrayList:Ljava/util/ArrayList;

.field final synthetic val$stagedObject:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/share/ShareApi;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/facebook/share/ShareApi$5;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$5;->val$arrayList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$5;->val$stagedObject:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Integer;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/facebook/share/ShareApi$5;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 426
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/facebook/share/ShareApi$5;->get(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v2, p0, Lcom/facebook/share/ShareApi$5;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 430
    .local v1, "size":I
    new-instance v0, Lcom/facebook/internal/Mutable;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 431
    .local v0, "current":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/facebook/share/ShareApi$5$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/share/ShareApi$5$1;-><init>(Lcom/facebook/share/ShareApi$5;Lcom/facebook/internal/Mutable;I)V

    return-object v2
.end method

.method public set(Ljava/lang/Integer;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "onErrorListener"    # Lcom/facebook/internal/CollectionMapper$OnErrorListener;

    .prologue
    .line 458
    :try_start_0
    iget-object v2, p0, Lcom/facebook/share/ShareApi$5;->val$stagedObject:Lorg/json/JSONArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "ex":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 462
    const-string/jumbo v1, "Error staging object."

    .line 464
    :cond_0
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Lcom/facebook/internal/CollectionMapper$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .locals 0

    .prologue
    .line 426
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/share/ShareApi$5;->set(Ljava/lang/Integer;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V

    return-void
.end method
