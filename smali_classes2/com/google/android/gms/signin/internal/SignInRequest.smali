.class public Lcom/google/android/gms/signin/internal/SignInRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/signin/internal/SignInRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzbhj:Lcom/google/android/gms/common/internal/ResolveAccountRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/signin/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/SignInRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/internal/ResolveAccountRequest;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "resolveAccountRequest"    # Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->zzbhj:Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/ResolveAccountRequest;)V
    .locals 1
    .param p1, "resolveAccountRequest"    # Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/signin/internal/SignInRequest;-><init>(ILcom/google/android/gms/common/internal/ResolveAccountRequest;)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/signin/internal/zzi;->zza(Lcom/google/android/gms/signin/internal/SignInRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzFO()Lcom/google/android/gms/common/internal/ResolveAccountRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->zzbhj:Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    return-object v0
.end method
