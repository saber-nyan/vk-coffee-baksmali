.class public Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/GetRecentContextCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/zzf;


# instance fields
.field final mVersionCode:I

.field public final zzTT:Landroid/accounts/Account;

.field public final zzTU:Z

.field public final zzTV:Z

.field public final zzTW:Z

.field public final zzTX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->CREATOR:Lcom/google/android/gms/appdatasearch/zzf;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;-><init>(Landroid/accounts/Account;ZZZLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;ZZZLjava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "filterAccount"    # Landroid/accounts/Account;
    .param p3, "includeDeviceOnlyData"    # Z
    .param p4, "includeThirdPartyContext"    # Z
    .param p5, "includeUsageEnded"    # Z
    .param p6, "filterPackageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->zzTT:Landroid/accounts/Account;

    iput-boolean p3, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->zzTU:Z

    iput-boolean p4, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->zzTV:Z

    iput-boolean p5, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->zzTW:Z

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->zzTX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ZZZLjava/lang/String;)V
    .locals 7
    .param p1, "filterAccount"    # Landroid/accounts/Account;
    .param p2, "includeDeviceOnlyData"    # Z
    .param p3, "includeThirdPartyContext"    # Z
    .param p4, "includeUsageEnded"    # Z
    .param p5, "filterPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;-><init>(ILandroid/accounts/Account;ZZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->CREATOR:Lcom/google/android/gms/appdatasearch/zzf;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->CREATOR:Lcom/google/android/gms/appdatasearch/zzf;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/zzf;->zza(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Landroid/os/Parcel;I)V

    return-void
.end method
