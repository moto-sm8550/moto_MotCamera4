.class public final Lcom/google/android/gms/internal/base/zad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field public static final zaa:Lcom/google/android/gms/common/Feature;

.field public static final zab:[Lcom/google/android/gms/common/Feature;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/Feature;

    invoke-direct {v0}, Lcom/google/android/gms/common/Feature;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/base/zad;->zaa:Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/base/zad;->zab:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
