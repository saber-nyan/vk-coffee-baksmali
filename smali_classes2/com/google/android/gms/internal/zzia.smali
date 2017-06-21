.class public Lcom/google/android/gms/internal/zzia;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzCi:Lcom/google/android/gms/internal/zzey;

.field private final zzKQ:Lcom/google/android/gms/internal/zzhx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzey;Lcom/google/android/gms/internal/zzhw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzia;->zzCi:Lcom/google/android/gms/internal/zzey;

    new-instance v0, Lcom/google/android/gms/internal/zzhx;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzhx;-><init>(Lcom/google/android/gms/internal/zzhw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzKQ:Lcom/google/android/gms/internal/zzhx;

    return-void
.end method


# virtual methods
.method public zzgP()Lcom/google/android/gms/internal/zzey;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzCi:Lcom/google/android/gms/internal/zzey;

    return-object v0
.end method

.method public zzgQ()Lcom/google/android/gms/internal/zzhx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzKQ:Lcom/google/android/gms/internal/zzhx;

    return-object v0
.end method
