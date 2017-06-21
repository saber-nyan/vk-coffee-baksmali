.class public Lcom/vkcoffee/android/AudioInfoCoffee;
.super Ljava/lang/Object;
.source "AudioInfoCoffee.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/AudioInfoCoffee$Check;
    }
.end annotation


# static fields
.field private static final MEGABYTES:I = 0xfa000

.field private static final PULSE_RATE:I = 0x7d

.field private static df:Ljava/text/DecimalFormat;

.field private static duration:I

.field private static fileSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/vkcoffee/android/AudioInfoCoffee;->fileSize:I

    .line 36
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/vkcoffee/android/AudioInfoCoffee;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0

    .prologue
    .line 34
    sput p0, Lcom/vkcoffee/android/AudioInfoCoffee;->fileSize:I

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/vkcoffee/android/AudioInfoCoffee;->fileSize:I

    return v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/vkcoffee/android/AudioInfoCoffee;->duration:I

    return v0
.end method

.method static synthetic access$3()Ljava/text/DecimalFormat;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/vkcoffee/android/AudioInfoCoffee;->df:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public static calculate(Ljava/lang/String;II)V
    .locals 3
    .param p0, "urlParam"    # Ljava/lang/String;
    .param p1, "duration"    # I
    .param p2, "aId"    # I

    .prologue
    .line 39
    sput p1, Lcom/vkcoffee/android/AudioInfoCoffee;->duration:I

    .line 40
    new-instance v0, Lcom/vkcoffee/android/AudioInfoCoffee$Check;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/AudioInfoCoffee$Check;-><init>(Lcom/vkcoffee/android/AudioInfoCoffee$Check;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioInfoCoffee$Check;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method
