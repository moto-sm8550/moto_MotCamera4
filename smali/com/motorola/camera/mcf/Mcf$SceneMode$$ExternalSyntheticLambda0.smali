.class public final synthetic Lcom/motorola/camera/mcf/Mcf$SceneMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/mcf/Mcf$SceneMode$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/mcf/Mcf$SceneMode$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->$r8$lambda$AfMU7Q-92FVXJNMKWGojcbIlWKk(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
