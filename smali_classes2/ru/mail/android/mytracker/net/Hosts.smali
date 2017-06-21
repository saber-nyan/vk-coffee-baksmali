.class public Lru/mail/android/mytracker/net/Hosts;
.super Ljava/lang/Object;
.source "Hosts.java"


# static fields
.field private static testHost:Ljava/lang/String;

.field private static trackerHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "https://tracker-api.my.com/v2/"

    sput-object v0, Lru/mail/android/mytracker/net/Hosts;->trackerHost:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getTrackerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lru/mail/android/mytracker/net/Hosts;->testHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    sget-object v0, Lru/mail/android/mytracker/net/Hosts;->testHost:Ljava/lang/String;

    .line 29
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lru/mail/android/mytracker/net/Hosts;->trackerHost:Ljava/lang/String;

    goto :goto_0
.end method
