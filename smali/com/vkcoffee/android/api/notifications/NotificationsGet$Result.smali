.class public Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;
.super Ljava/lang/Object;
.source "NotificationsGet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/notifications/NotificationsGet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public foundDividers:Z

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/models/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public newFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->foundDividers:Z

    return-void
.end method
