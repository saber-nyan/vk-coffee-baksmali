.class final Lcom/facebook/internal/AppEventsLoggerUtility$1;
.super Ljava/util/HashMap;
.source "AppEventsLoggerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/AppEventsLoggerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 47
    sget-object v0, Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    const-string/jumbo v1, "MOBILE_APP_INSTALL"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/internal/AppEventsLoggerUtility$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;->CUSTOM_APP_EVENTS:Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    const-string/jumbo v1, "CUSTOM_APP_EVENTS"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/internal/AppEventsLoggerUtility$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
