.class public final Lcom/google/android/gms/internal/zzro$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzbdY:Ljava/lang/String;

.field private zzbgY:Z

.field private zzbgZ:Z

.field private zzbha:Z

.field private zzbhb:Ljava/lang/String;

.field private zzbhc:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzFJ()Lcom/google/android/gms/internal/zzro;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/zzro;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbgY:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbgZ:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbdY:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbha:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbhb:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzro$zza;->zzbhc:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzro;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/internal/zzro$1;)V

    return-object v0
.end method
