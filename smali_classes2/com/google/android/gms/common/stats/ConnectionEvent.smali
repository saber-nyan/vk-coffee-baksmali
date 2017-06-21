.class public final Lcom/google/android/gms/common/stats/ConnectionEvent;
.super Lcom/google/android/gms/common/stats/zzf;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/stats/ConnectionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzane:J

.field private zzanf:I

.field private final zzang:Ljava/lang/String;

.field private final zzanh:Ljava/lang/String;

.field private final zzani:Ljava/lang/String;

.field private final zzanj:Ljava/lang/String;

.field private final zzank:Ljava/lang/String;

.field private final zzanl:Ljava/lang/String;

.field private final zzanm:J

.field private final zzann:J

.field private zzano:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/stats/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 5
    .param p1, "versionCode"    # I
    .param p2, "timeMillis"    # J
    .param p4, "eventType"    # I
    .param p5, "callingProcess"    # Ljava/lang/String;
    .param p6, "callingService"    # Ljava/lang/String;
    .param p7, "targetProcess"    # Ljava/lang/String;
    .param p8, "targetService"    # Ljava/lang/String;
    .param p9, "stackTrace"    # Ljava/lang/String;
    .param p10, "connKey"    # Ljava/lang/String;
    .param p11, "elapsedRealtime"    # J
    .param p13, "heapAlloc"    # J

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/common/stats/zzf;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzane:J

    iput p4, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzanf:I

    iput-object p5, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzang:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzanh:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzani:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzanj:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzano:J

    iput-object p9, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzank:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzanl:Ljava/lang/String;

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzanm:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzann:J

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 16
    .param p1, "timeMillis"    # J
    .param p3, "eventType"    # I
    .param p4, "callingProcess"    # Ljava/lang/String;
    .param p5, "callingService"    # Ljava/lang/String;
    .param p6, "targetProcess"    # Ljava/lang/String;
    .param p7, "targetService"    # Ljava/lang/String;
    .param p8, "stackTrace"    # Ljava/lang/String;
    .param p9, "connKey"    # Ljava/lang/String;
    .param p10, "elapsedRealtime"    # J
    .param p12, "heapAlloc"    # J

    .prologue
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzanf:I

    return v0
.end method

.method public getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzane:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/stats/zza;->zza(Lcom/google/android/gms/common/stats/ConnectionEvent;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzang:Ljava/lang/String;

    return-object v0
.end method

.method public zzrG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzanh:Ljava/lang/String;

    return-object v0
.end method

.method public zzrH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzani:Ljava/lang/String;

    return-object v0
.end method

.method public zzrI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzanj:Ljava/lang/String;

    return-object v0
.end method

.method public zzrJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzank:Ljava/lang/String;

    return-object v0
.end method

.method public zzrK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzanl:Ljava/lang/String;

    return-object v0
.end method

.method public zzrL()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzano:J

    return-wide v0
.end method

.method public zzrM()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzann:J

    return-wide v0
.end method

.method public zzrN()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzanm:J

    return-wide v0
.end method

.method public zzrO()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzrF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzrG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzrH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzrI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzank:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzrM()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzank:Ljava/lang/String;

    goto :goto_0
.end method
