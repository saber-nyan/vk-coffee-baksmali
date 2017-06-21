.class Lcom/facebook/AccessTokenManager$1;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/AccessTokenManager;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$1;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/AccessTokenManager$1;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$000(Lcom/facebook/AccessTokenManager;)V

    .line 206
    return-void
.end method
