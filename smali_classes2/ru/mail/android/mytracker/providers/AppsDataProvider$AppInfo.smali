.class public Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;
.super Ljava/lang/Object;
.source "AppsDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/mail/android/mytracker/providers/AppsDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public final bundle:Ljava/lang/String;

.field public final firstInstallTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "bundle"    # Ljava/lang/String;
    .param p2, "firstInstallTime"    # J

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;->bundle:Ljava/lang/String;

    .line 171
    iput-wide p2, p0, Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;->firstInstallTime:J

    .line 172
    return-void
.end method
