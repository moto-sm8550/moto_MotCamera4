.class public final Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExtensionWindowLayoutInfoBackend.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/window/extensions/layout/WindowLayoutInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $consumer:Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;


# direct methods
.method public constructor <init>(Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1;->$consumer:Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    const-string/jumbo v0, "value"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1;->$consumer:Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;

    invoke-virtual {p0, p1}, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
