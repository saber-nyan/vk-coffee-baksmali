.class public final Lcom/google/android/gms/measurement/internal/EventParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/measurement/internal/zzk;


# instance fields
.field public final name:Ljava/lang/String;

.field public final versionCode:I

.field public final zzaVV:Lcom/google/android/gms/measurement/internal/EventParams;

.field public final zzaVW:Ljava/lang/String;

.field public final zzaVX:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/EventParcel;->CREATOR:Lcom/google/android/gms/measurement/internal/zzk;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/android/gms/measurement/internal/EventParams;
    .param p4, "origin"    # Ljava/lang/String;
    .param p5, "eventTimeInMilliseconds"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->zzaVV:Lcom/google/android/gms/measurement/internal/EventParams;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->zzaVW:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->zzaVX:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/google/android/gms/measurement/internal/EventParams;
    .param p3, "origin"    # Ljava/lang/String;
    .param p4, "eventTimeInMilliseconds"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->zzaVV:Lcom/google/android/gms/measurement/internal/EventParams;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->zzaVW:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->zzaVX:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->zzaVW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/EventParcel;->zzaVV:Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Lcom/google/android/gms/measurement/internal/EventParcel;Landroid/os/Parcel;I)V

    return-void
.end method
