.class public Lcom/google/android/gms/clearcut/LogEventParcelable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/clearcut/zzd;


# instance fields
.field public final versionCode:I

.field public zzafh:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

.field public zzafi:[B

.field public zzafj:[I

.field public final zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

.field public final zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

.field public final zzafm:Lcom/google/android/gms/clearcut/zzb$zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/clearcut/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->CREATOR:Lcom/google/android/gms/clearcut/zzd;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/playlog/internal/PlayLoggerContext;[B[I)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "playLoggerContext"    # Lcom/google/android/gms/playlog/internal/PlayLoggerContext;
    .param p3, "logEventBytes"    # [B
    .param p4, "testCodes"    # [I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafh:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafi:[B

    iput-object p4, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafj:[I

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafm:Lcom/google/android/gms/clearcut/zzb$zzb;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/zzsz$zzd;Lcom/google/android/gms/clearcut/zzb$zzb;Lcom/google/android/gms/clearcut/zzb$zzb;[I)V
    .locals 1
    .param p1, "playLoggerContext"    # Lcom/google/android/gms/playlog/internal/PlayLoggerContext;
    .param p2, "logEvent"    # Lcom/google/android/gms/internal/zzsz$zzd;
    .param p3, "extensionProducer"    # Lcom/google/android/gms/clearcut/zzb$zzb;
    .param p4, "clientVisualElementsProducer"    # Lcom/google/android/gms/clearcut/zzb$zzb;
    .param p5, "testCodes"    # [I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafh:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafm:Lcom/google/android/gms/clearcut/zzb$zzb;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafj:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    .end local p1    # "other":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafh:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafh:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafi:[B

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafi:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafj:[I

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafj:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafm:Lcom/google/android/gms/clearcut/zzb$zzb;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafm:Lcom/google/android/gms/clearcut/zzb$zzb;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafh:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafi:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafj:[I

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafm:Lcom/google/android/gms/clearcut/zzb$zzb;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LogEventParcelable["

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafh:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafi:[B

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafj:[I

    if-nez v1, :cond_1

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafm:Lcom/google/android/gms/clearcut/zzb$zzb;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafi:[B

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ", "

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzv;->zzcL(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzv;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafj:[I

    aput-object v4, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzv;->zza(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/clearcut/zzd;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;Landroid/os/Parcel;I)V

    return-void
.end method
