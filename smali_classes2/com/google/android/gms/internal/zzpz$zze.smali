.class public final Lcom/google/android/gms/internal/zzpz$zze;
.super Lcom/google/android/gms/internal/zzsu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation


# static fields
.field private static volatile zzaZK:[Lcom/google/android/gms/internal/zzpz$zze;


# instance fields
.field public zzaZL:Ljava/lang/String;

.field public zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

.field public zzaZv:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsu;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpz$zze;->zzDI()Lcom/google/android/gms/internal/zzpz$zze;

    return-void
.end method

.method public static zzDH()[Lcom/google/android/gms/internal/zzpz$zze;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZK:[Lcom/google/android/gms/internal/zzpz$zze;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzss;->zzbut:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZK:[Lcom/google/android/gms/internal/zzpz$zze;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzpz$zze;

    sput-object v0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZK:[Lcom/google/android/gms/internal/zzpz$zze;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZK:[Lcom/google/android/gms/internal/zzpz$zze;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzpz$zze;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzpz$zze;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzpz$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzpz$zzc;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzsu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpz$zze;->zzx(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzpz$zze;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzsn;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/gms/internal/zzsn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzsu;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    return-void
.end method

.method public zzDI()Lcom/google/android/gms/internal/zzpz$zze;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzbuu:I

    return-object p0
.end method

.method public zzx(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzpz$zze;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzb(Lcom/google/android/gms/internal/zzsm;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzpz$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpz$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method protected zzz()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzsu;->zzz()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZv:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpz$zze;->zzaZM:Lcom/google/android/gms/internal/zzpz$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method
