.class public final synthetic Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "WakeLockHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Lcom/motorola/camera/cli/util/WakeLockHelper;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;

    invoke-direct {v0}, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;->INSTANCE:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/motorola/camera/cli/util/WakeLockHelper;

    const/4 v1, 0x1

    const-string v2, "<init>"

    const-string v3, "<init>(Landroid/content/Context;)V"

    invoke-direct {p0, v1, v0, v2, v3}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    const-string p0, "p0"

    .line 2
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/motorola/camera/cli/util/WakeLockHelper;

    invoke-direct {p0, p1}, Lcom/motorola/camera/cli/util/WakeLockHelper;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
