.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$21;
.super Lkotlin/jvm/internal/Lambda;
.source "AppInfoComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$21;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$21;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$21;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$21;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$21;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Float;

    const-string p0, "PSS "

    .line 2
    invoke-static {p0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$Companion;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$Companion;->toMemoryMb(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
