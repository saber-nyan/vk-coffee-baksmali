.class public Lcom/google/android/gms/internal/zzbx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zzcb;J)Lcom/google/android/gms/internal/zzbz;
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/zzcb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzcb;->zzb(J)Lcom/google/android/gms/internal/zzbz;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs zza(Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;J[Ljava/lang/String;)Z
    .locals 2
    .param p0    # Lcom/google/android/gms/internal/zzcb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/zzbz;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzcb;->zza(Lcom/google/android/gms/internal/zzbz;J[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs zza(Lcom/google/android/gms/internal/zzcb;Lcom/google/android/gms/internal/zzbz;[Ljava/lang/String;)Z
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/zzcb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/zzbz;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzcb;->zza(Lcom/google/android/gms/internal/zzbz;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzcb;)Lcom/google/android/gms/internal/zzbz;
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/zzcb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcb;->zzdB()Lcom/google/android/gms/internal/zzbz;

    move-result-object v0

    goto :goto_0
.end method
