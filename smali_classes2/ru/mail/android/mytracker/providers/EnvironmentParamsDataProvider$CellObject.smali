.class public Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;
.super Ljava/lang/Object;
.source "EnvironmentParamsDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellObject"
.end annotation


# static fields
.field public static final TYPE_GSM:Ljava/lang/String; = "gsm"


# instance fields
.field public cid:I

.field public lac:I

.field public mcc:I

.field public mnc:I

.field public rssi:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput v0, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->cid:I

    .line 228
    iput v0, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->lac:I

    .line 229
    iput v0, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->rssi:I

    .line 230
    iput v0, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->mcc:I

    .line 231
    iput v0, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->mnc:I

    .line 235
    iput-object p1, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->type:Ljava/lang/String;

    .line 236
    return-void
.end method
