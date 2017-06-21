.class abstract Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$RequestWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractRequestWrapper"
.end annotation


# instance fields
.field protected error:Lcom/facebook/FacebookRequestError;

.field protected objectId:Ljava/lang/String;

.field protected objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field private request:Lcom/facebook/GraphRequest;

.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method protected constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 0
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1660
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->objectId:Ljava/lang/String;

    .line 1661
    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 1662
    return-void
.end method


# virtual methods
.method public addToBatch(Lcom/facebook/GraphRequestBatch;)V
    .locals 1
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequestBatch;->add(Lcom/facebook/GraphRequest;)Z

    .line 1666
    return-void
.end method

.method public getError()Lcom/facebook/FacebookRequestError;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .locals 6
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1691
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1692
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error running request for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1691
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1697
    return-void
.end method

.method protected abstract processSuccess(Lcom/facebook/GraphResponse;)V
.end method

.method protected setRequest(Lcom/facebook/GraphRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/facebook/GraphRequest;

    .prologue
    .line 1673
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->request:Lcom/facebook/GraphRequest;

    .line 1676
    const-string/jumbo v0, "v2.4"

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setVersion(Ljava/lang/String;)V

    .line 1677
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;-><init>(Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;)V

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 1688
    return-void
.end method
