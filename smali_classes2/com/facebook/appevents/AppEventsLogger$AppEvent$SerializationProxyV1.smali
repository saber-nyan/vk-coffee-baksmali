.class Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventsLogger$AppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2288d511ce8549edL


# instance fields
.field private final isImplicit:Z

.field private final jsonString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "isImplicit"    # Z

    .prologue
    .line 1425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;->jsonString:Ljava/lang/String;

    .line 1427
    iput-boolean p2, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;->isImplicit:Z

    .line 1428
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/facebook/appevents/AppEventsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/facebook/appevents/AppEventsLogger$1;

    .prologue
    .line 1420
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1431
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$AppEvent;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;->jsonString:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/appevents/AppEventsLogger$AppEvent$SerializationProxyV1;->isImplicit:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;ZLcom/facebook/appevents/AppEventsLogger$1;)V

    return-object v0
.end method
