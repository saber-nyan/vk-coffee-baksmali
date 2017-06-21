.class final Lcom/facebook/appevents/AppEventsLogger$5;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->logEvent(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AppEvent;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$event:Lcom/facebook/appevents/AppEventsLogger$AppEvent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$AppEvent;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLogger$5;->val$accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    iput-object p3, p0, Lcom/facebook/appevents/AppEventsLogger$5;->val$event:Lcom/facebook/appevents/AppEventsLogger$AppEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 749
    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$5;->val$accessTokenAppId:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    invoke-static {v1, v2}, Lcom/facebook/appevents/AppEventsLogger;->access$600(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;

    move-result-object v0

    .line 750
    .local v0, "state":Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;
    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$5;->val$event:Lcom/facebook/appevents/AppEventsLogger$AppEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/AppEventsLogger$SessionEventsState;->addEvent(Lcom/facebook/appevents/AppEventsLogger$AppEvent;)V

    .line 751
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$700()V

    .line 752
    return-void
.end method
