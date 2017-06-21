.class public Lcom/google/android/gms/signin/internal/SignInResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/signin/internal/SignInResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzams:Lcom/google/android/gms/common/ConnectionResult;

.field private final zzbhk:Lcom/google/android/gms/common/internal/ResolveAccountResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/signin/internal/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/SignInResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "connectionResultStatusCode"    # I

    .prologue
    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/signin/internal/SignInResponse;-><init>(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;
    .param p3, "resolveAccountResponse"    # Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->zzams:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->zzbhk:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 1
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;
    .param p2, "resolveAccountResponse"    # Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/signin/internal/SignInResponse;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/signin/internal/zzj;->zza(Lcom/google/android/gms/signin/internal/SignInResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzFP()Lcom/google/android/gms/common/internal/ResolveAccountResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->zzbhk:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    return-object v0
.end method

.method public zzqY()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->zzams:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method
