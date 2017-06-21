.class public Lcom/google/android/gms/measurement/internal/zzd;
.super Lcom/google/android/gms/measurement/internal/zzy;


# static fields
.field static final zzaVA:Ljava/lang/String;


# instance fields
.field private zzRy:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/google/android/gms/common/zzc;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "(\\d+)(\\d)(\\d\\d)"

    const-string/jumbo v2, "$1.$2.$3"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzd;->zzaVA:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzw;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzAo()Lcom/google/android/gms/measurement/internal/zzp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    return-object v0
.end method

.method public zzBA()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method zzBB()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public zzBC()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method zzBD()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method zzBE()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public zzBF()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public zzBG()I
    .locals 1

    const/16 v0, 0x800

    return v0
.end method

.method zzBH()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public zzBI()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWk:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public zzBJ()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWl:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public zzBK()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWm:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method zzBL()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method zzBM()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method zzBN()J
    .locals 2

    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method zzBO()J
    .locals 2

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method zzBP()J
    .locals 2

    const-wide/32 v0, 0xee48

    return-wide v0
.end method

.method public zzBQ()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWw:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzBR()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWs:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzBS()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public zzBT()I
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWi:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public zzBU()I
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWj:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public zzBV()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWo:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzBW()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWd:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzBX()J
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWp:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzBY()J
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWr:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzBZ()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWq:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzBp()J
    .locals 2

    sget v0, Lcom/google/android/gms/common/zzc;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method zzBz()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWa:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzCa()J
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWt:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzCb()J
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWu:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzCc()I
    .locals 3

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWv:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic zzCd()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCd()V

    return-void
.end method

.method public bridge synthetic zzCe()Lcom/google/android/gms/measurement/internal/zzc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCe()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCf()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCf()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCg()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCg()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCh()Lcom/google/android/gms/measurement/internal/zzg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCh()Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCi()Lcom/google/android/gms/measurement/internal/zzac;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCj()Lcom/google/android/gms/measurement/internal/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCj()Lcom/google/android/gms/measurement/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCk()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCk()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCl()Lcom/google/android/gms/measurement/internal/zzu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCl()Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCm()Lcom/google/android/gms/measurement/internal/zzad;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCm()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCn()Lcom/google/android/gms/measurement/internal/zzv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCo()Lcom/google/android/gms/measurement/internal/zzt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCp()Lcom/google/android/gms/measurement/internal/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzCp()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWe:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWf:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "config/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "app_instance_id"

    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "platform"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "gmp_version"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzBp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzl$zza;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzl$zza",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzCl()Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzl$zza;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzu;->zzO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzl$zza;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzl$zza",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzCl()Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzl$zza;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzu;->zzO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method zzeS(Ljava/lang/String;)J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWb:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzd;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzl$zza;)J

    move-result-wide v0

    return-wide v0
.end method

.method zzeT(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWx:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzl$zza;)I

    move-result v0

    return v0
.end method

.method public zzeU(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWg:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzl$zza;)I

    move-result v0

    return v0
.end method

.method public zzeV(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzl;->zzaWh:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzd;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzl$zza;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public zzeW(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWn:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzl$zza;)I

    move-result v0

    const v1, 0xf4240

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic zzjj()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzjj()V

    return-void
.end method

.method public bridge synthetic zzjk()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzjk()V

    return-void
.end method

.method public bridge synthetic zzjl()Lcom/google/android/gms/internal/zzmq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzy;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    return-object v0
.end method

.method zzkM()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWy:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkR()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "google_app_measurement.db"

    return-object v0
.end method

.method public zzkS()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "google_app_measurement2.db"

    return-object v0
.end method

.method public zzkX()J
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzl;->zzaWc:Lcom/google/android/gms/measurement/internal/zzl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzl$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkr()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/common/internal/zzd;->zzakE:Z

    return v0
.end method

.method public zzks()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzd;->zzRy:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzd;->zzRy:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zznf;->zzi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzd;->zzRy:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzd;->zzRy:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzd;->zzRy:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCE()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzd;->zzRy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
