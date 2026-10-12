%Dominykas Janulevičius EDIF-25/1 2026-10-10 16:00
%5 laboratorinis darbas
%%Priv uzd

%%1
clc; clear; close all;

x = 0:0.01:2;
f = cos(sin(2*pi*x));
S = struct('signalas', f, 'x', x, 'pavadinimas', 'Signalas f(x) = cos(sin(2\pix))');

disp('Sukurta struktūra S:');
disp(S);
disp('Laukų pavadinimai:');
disp(fieldnames(S));

figure;
plot(S.x, S.signalas, 'b', 'LineWidth', 1.5);
grid on;
xlabel('x');
ylabel('f(x)');
title(S.pavadinimas);

%%2
clc;

while true
    m = input('Įveskite m: ');
    n = input('Įveskite n: ');
    if m == n
        disp('m ir n reikšmės vienodos. Programa baigta.');
        break
    end

    if m > n
        didesnis = m;
        mazesnis = n;
    else
        didesnis = n;
        mazesnis = m;
    end

    if mazesnis <= 0
        disp('Abu skaičiai turi būti teigiami. Bandykite dar kartą.');
        continue
    end

    while didesnis - mazesnis > 0
        didesnis = didesnis - mazesnis;
    end

    disp(['Mažiausia teigiama reikšmė: ', num2str(didesnis)]);
end

%%Pap uzd

%1
clc; clear; close all;

pirmi = [];
antri = [];

while true
    a = round(rand*3);
    b = round(rand*5);

    pirmi(end+1) = a;
    antri(end+1) = b;
    if a == b
        break
    end
end

disp(['Iteracijų skaičius: ', num2str(length(pirmi))]);
disp(['Sutapęs skaičius: ', num2str(a)]);

k = 1:length(pirmi);
figure;
plot(k, pirmi, '-o', k, antri, '-s', 'LineWidth', 1.5);
grid on;
xlabel('Iteracija');
ylabel('Sugeneruotas skaičius');
title('Atsitiktinių skaičių kitimas');
legend('round(rand*3)', 'round(rand*5)');
