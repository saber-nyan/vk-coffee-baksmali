.class public Lcom/google/android/gms/measurement/internal/AppMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/measurement/internal/zzb;


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final versionCode:I

.field public final zzaMV:Ljava/lang/String;

.field public final zzaVt:Ljava/lang/String;

.field public final zzaVu:Ljava/lang/String;

.field public final zzaVv:J

.field public final zzaVw:J

.field public final zzaVx:Ljava/lang/String;

.field public final zzaVy:Z

.field public final zzaVz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->CREATOR:Lcom/google/android/gms/measurement/internal/zzb;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZ)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "gmpAppId"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p5, "appStore"    # Ljava/lang/String;
    .param p6, "gmpVersion"    # J
    .param p8, "devCertHash"    # J
    .param p10, "healthMonitor"    # Ljava/lang/String;
    .param p11, "measurementEnabled"    # Z
    .param p12, "firstOpen"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVt:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaMV:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVu:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVv:J

    iput-wide p8, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVw:J

    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVx:Ljava/lang/String;

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    iput-boolean p11, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVy:Z

    :goto_0
    iput-boolean p12, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVz:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVy:Z

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gmpAppId"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "appStore"    # Ljava/lang/String;
    .param p5, "gmpVersion"    # J
    .param p7, "devCertHash"    # J
    .param p9, "healthMonitor"    # Ljava/lang/String;
    .param p10, "measurementEnabled"    # Z
    .param p11, "firstOpen"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->packageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .end local p2    # "gmpAppId":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVt:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaMV:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVu:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVv:J

    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVw:J

    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVx:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVy:Z

    iput-boolean p11, p0, Lcom/google/android/gms/measurement/internal/AppMetadata;->zzaVz:Z

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzb;->zza(Lcom/google/android/gms/measurement/internal/AppMetadata;Landroid/os/Parcel;I)V

    return-void
.end method
