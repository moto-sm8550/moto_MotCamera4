.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/InvalidModuleExceptionKt;
.super Ljava/lang/Object;
.source "InvalidModuleException.kt"


# static fields
.field public static final INVALID_MODULE_NOTIFIER_CAPABILITY:Lcom/google/android/gms/internal/mlkit_common/zzlf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzlf;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlf;

    const-string v1, "InvalidModuleNotifier"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzlf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/InvalidModuleExceptionKt;->INVALID_MODULE_NOTIFIER_CAPABILITY:Lcom/google/android/gms/internal/mlkit_common/zzlf;

    return-void
.end method
