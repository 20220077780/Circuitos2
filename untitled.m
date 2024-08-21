s = tf([1 0], 1);

Yb = [ (0.5 + 0.45*s +0.25) -0.25;

	-0.15		(0.25 + 0.25*s)

	];

Is = [ (1/s -0.45);

	(-0.25)
	];

E = inv(Yb)*Is

% Resposta ao impulso
figure;
impulse(E);
title('Resposta ao Impulso da Função de Transferência E(s)');