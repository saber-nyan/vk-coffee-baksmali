.class final Lcom/facebook/FacebookSdk$4;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$applicationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/facebook/FacebookSdk$4;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/FacebookSdk$4;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/facebook/FacebookSdk$4;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/FacebookSdk$4;->val$applicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/FacebookSdk;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    .line 440
    return-void
.end method
